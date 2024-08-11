// package com.thietbimay.laptopshop.config;

// import com.cksource.ckfinder.config.Config;
// import com.cksource.ckfinder.config.ConfigFactory;
// import com.cksource.ckfinder.servlet.CKFinderServlet;
// import org.springframework.context.ApplicationContext;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.boot.web.servlet.ServletRegistrationBean;
// import org.springframework.context.ApplicationEventPublisher;
// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;

// @Configuration
// public class CKFinderConfig {
// @Autowired
// private ApplicationEventPublisher applicationEventPublisher;

// @Autowired
// private ApplicationContext applicationContext;

// // @Bean
// // public ServletRegistrationBean<CKFinderServlet> ckfinderServlet() {
// // return new ServletRegistrationBean<>(new CKFinderServlet(),"/ckfinder/*");
// // }

// @Bean
// public ServletRegistrationBean<CKFinderServlet> ckfinderServlet() {
// ServletRegistrationBean<CKFinderServlet> registration = new
// ServletRegistrationBean<>(new CKFinderServlet(),
// "/ckfinder/*");
// registration.setLoadOnStartup(1);
// return registration;
// }

// @Bean
// public Config ckfinderConfig() {
// ConfigFactory configFactory = new ConfigFactory(applicationEventPublisher,
// applicationContext);
// return configFactory.getBaseConfig();
// }

// }