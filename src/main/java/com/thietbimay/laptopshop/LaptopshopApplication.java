package com.thietbimay.laptopshop;

import java.io.IOException;
import java.nio.file.Files;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.web.servlet.ServletContextInitializer;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.cksource.ckfinder.servlet.CKFinderServlet;

import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.FilterRegistration;
import jakarta.servlet.MultipartConfigElement;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.*;

// @SpringBootApplication
@SpringBootApplication(exclude = {
		org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class,
		org.springframework.boot.actuate.autoconfigure.security.servlet.ManagementWebSecurityAutoConfiguration.class
})
public class LaptopshopApplication implements ServletContextInitializer, WebMvcConfigurer {

	public static void main(String[] args) {
		SpringApplication.run(LaptopshopApplication.class, args);
	}

	@Override
	public void onStartup(ServletContext servletContext) {
		// Register the CKFinder's servlet.
		ServletRegistration.Dynamic dispatcher = servletContext.addServlet("ckfinder", new CKFinderServlet());
		dispatcher.setLoadOnStartup(1);
		dispatcher.addMapping("/ckfinder/*");
		dispatcher.setInitParameter("scan-path", "com.thietbimay.laptopshop.ckfinder");

		FilterRegistration.Dynamic filter = servletContext.addFilter("x-content-options", new Filter() {
			@Override
			public void init(FilterConfig filterConfig) {
			}

			@Override
			public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
					throws IOException, ServletException {
				((HttpServletResponse) response).setHeader("X-Content-Type-Options", "nosniff");
				chain.doFilter(request, response);
			}

			@Override
			public void destroy() {
			}
		});

		filter.addMappingForUrlPatterns(null, false, "/userfiles/*");

		String tempDirectory;

		try {
			tempDirectory = Files.createTempDirectory("ckfinder").toString();
		} catch (IOException e) {
			tempDirectory = null;
		}

		dispatcher.setMultipartConfig(new MultipartConfigElement(tempDirectory));
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// Configure the resource handler to serve files uploaded with CKFinder.
		String publicFilesDir = String.format("file:%s/userfiles/", System.getProperty("user.dir"));

		registry.addResourceHandler("/userfiles/**")
				.addResourceLocations(publicFilesDir);
	}
}
