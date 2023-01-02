package io.github.luversof.cloud.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@EnableDiscoveryClient
@SpringBootApplication
public class Application {
	
	@RestController
	public static class IndexController {
		@GetMapping("/")
		public String index() {
			return "gateway";
		}
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

}