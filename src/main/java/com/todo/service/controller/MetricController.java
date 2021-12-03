package com.todo.service.controller;

import com.api.monitor.service.RequestLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MetricController {

	@Autowired
	RequestLogService service;

	@RequestMapping(value = "/metrics", method = RequestMethod.GET)
	public String getMetrics(ModelMap model) {

		model.put("aggregateResponses", service.getAggregation());
		return "metrics";
	}

	@RequestMapping(value = "/uri_metric", method = RequestMethod.GET)
	public String getUriMetrics(@RequestParam String uri, ModelMap model) {

		model.put("requestLogs", service.getRequestLogs(uri));
		return "uri_metrics";
	}


}
