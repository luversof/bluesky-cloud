package io.github.luversof.cloud.gateway;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

import org.junit.jupiter.api.Test;
import org.yaml.snakeyaml.Yaml;

/** localdev 와 k8sdev 의 gateway 라우트 목록이 서로 어긋나지 않는지 확인한다. */
class RouteProfileParityTest {

  @Test
  void localdevAndK8sdevHaveSameRouteIds() throws IOException {
    assertThat(routeIds("application-localdev.yaml"))
        .isNotEmpty()
        .isEqualTo(routeIds("application-k8sdev.yaml"));
  }

  @SuppressWarnings("unchecked")
  private TreeSet<String> routeIds(String resource) throws IOException {
    try (InputStream in = getClass().getClassLoader().getResourceAsStream(resource)) {
      Map<String, Object> root = new Yaml().load(in);
      Object routes = dig(root, "spring", "cloud", "gateway", "server.webflux.routes");
      TreeSet<String> ids = new TreeSet<>();
      for (Map<String, Object> route : (List<Map<String, Object>>) routes) {
        ids.add((String) route.get("id"));
      }
      return ids;
    }
  }

  @SuppressWarnings("unchecked")
  private Object dig(Map<String, Object> map, String... keys) {
    Object current = map;
    for (String key : keys) {
      current = ((Map<String, Object>) current).get(key);
    }
    return current;
  }
}
