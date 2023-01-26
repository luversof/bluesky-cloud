package io.github.luversof.cloud.config.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@EnableConfigServer
@SpringBootApplication
public class Application {
	
	@RestController
	public static class IndexController {
		@GetMapping("/")
		public String index() {
			return "configServer";
		}
	}

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}