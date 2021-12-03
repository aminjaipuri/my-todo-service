package com.todo.service.config;

import com.api.monitor.filter.RequestLoggingFilter;
import com.api.monitor.service.RequestLogService;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.servlet.Filter;

@Configuration
public class WebConfiguration extends WebMvcConfigurerAdapter {

    @Bean
    public Filter filter() {
        RequestLoggingFilter requestLoggingFilter = new RequestLoggingFilter();
        return requestLoggingFilter;
    }

    @Bean
    public RequestLogService getRequestBeanService() {
        RequestLogService service = RequestLogService.getInstance();
        return service;
    }

    //@Bean
    public FilterRegistrationBean loggingFilter(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        registrationBean.setFilter(new RequestLoggingFilter());
        registrationBean.addUrlPatterns("/users/*");
        return registrationBean;
    }
}
