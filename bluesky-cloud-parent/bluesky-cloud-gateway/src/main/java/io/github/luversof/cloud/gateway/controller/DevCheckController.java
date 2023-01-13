package io.github.luversof.cloud.gateway.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/_check")
public class DevCheckController {
	
	@Autowired
	private DiscoveryClient discoveryClient;
	
	@GetMapping("/discoveryClient")
	public DiscoveryClient discoveryClient() {
		return discoveryClient;
	}

}
