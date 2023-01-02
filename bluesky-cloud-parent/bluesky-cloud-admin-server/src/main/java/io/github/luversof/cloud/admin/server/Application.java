package io.github.luversof.cloud.admin.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import de.codecentric.boot.admin.server.config.EnableAdminServer;

@Configuration
@EnableAutoConfiguration
@EnableAdminServer
public class Application {
	
	@RestController
	public static class IndexController {
		@GetMapping("/")
		public String index() {
			return "adminServer";
		}
	}
	
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}
