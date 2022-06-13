INSERT INTO `PROPERTIES` (`APPLICATION`, `PROFILE`, `LABEL`, `KEY`, `VALUE`) VALUES
('application', 'default', 'master', 'spring.jpa.database', 'mysql'),
('application', 'default', 'master', 'spring.jpa.show-sql', 'true'),
('application', 'default', 'master', 'spring.jpa.database-platform', 'org.hibernate.dialect.MySQL5Dialect'),
('application', 'default', 'master', 'spring.jpa.generate-ddl', 'true'),
('application', 'default', 'master', 'spring.jpa.hibernate.ddl-auto', 'create'),

('application', 'default', 'master', 'spring.jpa.properties.hibernate.dialect.storage_engine', 'innodb'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-mongo-properties.host', 'localhost'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-mongo-properties.port', '27017'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-mongo-properties.authentication-database', 'admin'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-connection-pool-settings.max-size', '30'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-connection-pool-settings.min-size', '10'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-connection-pool-settings.max-wait-time-m-s', '120000'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-connection-pool-settings.max-connection-life-time-m-s', '0'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-connection-pool-settings.max-connection-idle-time-m-s', '0'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-read-concern-level', 'local'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-read-preference', 'secondaryPreferred'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-write-concern.w', 'W1'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-write-concern.w-timeout-m-s', '5000'),
('application', 'default', 'master', 'bluesky-modules.mongodb.default-write-concern.journal', 'false'),

('application', 'default', 'master', 'spring.data.rest.base-path', '/api'),

('application', 'opdev', 'master', 'datasource.default.password', '{cipher}AQBvRFjoe8YJ9dLw5WTlOSqGVIxcGS9x1L831KH5xO75+K/fyZvicgkYjObC97fUV+T/F/wgm8gNjBDsNng2A5L7/jLLBxkSpJ6EPRHQqp6SxPtOd9YkSaJ7ihbhvjySx6GpwDkGO6qvRmG5WhQ5/FBzlURv6et3OJDajAXDRXw0iOBdNGT6fLioQpeNlrsurFr82nWPbeSZ3PXY8o8i2xP2Xay8vElR9QsERcRgRt6dp0Ho4tovRyKxYTeChOYoU1qQaFuyK0SoTCh78hCbvtSQGTYQOzsX+JQG/QPlEMV1Rl7ZeTMxcMQYVsdDA3u5aT0PPFDIZDZDPGa6ahWDHAZzyNkK2ftvRkPOO3JkHb3bwUicz1Rv66eCEdaTH02SXro='),
('application', 'opdev', 'master', 'datasource.default.type', 'com.zaxxer.hikari.HikariDataSource'),
('application', 'opdev', 'master', 'datasource.default.url', 'jdbc:mariadb://localhost:3306'),
('application', 'opdev', 'master', 'datasource.default.username', '{cipher}AQCU17f7Qd66Uy4x4HkIL+hoUNy79up90emBqlxmpB0gS4KG8I1+XAiTsDR/ID/yzNV+jnNBOaYhzQiDACXPJBbHMlxLHE3k45UthgWqx1vjrlggO37gne3upkJvbbRSs8dUIFT8A7bA83UPzuEZNhEOeQfgTMEUnDVgvtFbEmA6ra9BQ0lT8ysu/EPjBKgXQh5G5K8DaqNfx/qS1M7zCmw28zursxOKYLn/2cVxG8WV8D/d7xFL4cUtloQp+zaDTd6tlJoQSGueAx0KxoAtkW+o7jhQWRvT3I8NyrsPDJKizHmqnuc6knGmUQ3oBnhMqkPyJDXw9KhS/On3pBXAb5bq5eIjkR6RdaokQ1/3/pt5ZY5QSNJD1sVhrWZsLAfoQzA='),

('application', 'opdev', 'master', 'datasource.mongodb.host', 'localhost'),
('application', 'opdev', 'master', 'datasource.mongodb.port', '27017'),

('application', 'localdev', 'master', 'datasource.default.password', '{cipher}AQADDZ8BXL72JgHJTPoIgiAkK2nCcfItthEGthPHC2zN56T2Zt9VOCOv0x/hTCPQpQ5kZn02K7bYfRBzqQvPbMRocdkDeRGMqnv3/Ad2Xarf2bF1mMTk/XyrkHV/hZ4b1znTerl/Hafspjf5ByGIaZm7l/k8qX5nwC0fWR+UgEd5JeV/7YSbDefZDsI3Ipwp56oMmsPaLpfGHHSS+1KG+claCaLbdlpuwW2QMiPNwUN5i8dSIlcPubMEgfPax6WTgfAxHaBjIrNyIDpAjB+jvIj/6PoQiGI6n/5vuZGR5UnR6aEKJ8lywEnHXwBhe6BvccqKN/QkG5aOeKSNEXuHyVfQnyldYp8bgYFlJsto22Pc23LatNFWKGb7P5Z5ntTMnZg='),
('application', 'localdev', 'master', 'datasource.default.type', 'com.zaxxer.hikari.HikariDataSource'),
('application', 'localdev', 'master', 'datasource.default.url', 'jdbc:mariadb://localhost:3306'),
('application', 'localdev', 'master', 'datasource.default.username', '{cipher}AQB5yP3DsYsfA5wV1RtX3P4XC51TEXc3qxVb0RWkOsaLhLa8k2n8OI2OeKgwEjhBQeOPyZ6L2iOzLYnSrHftgTPuTtWAY3fK9bXTXji0WrJH+WidDcRHGTYIknBX3YhkyOzhqKvnIFfZA/URuIiv9Dg1KWGC/jjrLEZGV2vgZrcuekzEaQU/1jiI0kfDLVdhNQ6VrVlnKXKQDVKUPOFSLONwG/qFdbGCVD7YFfpcq9tLt18dQlApdoJbYfEIvxSjJAJFMI+3U6iefuWdC+MO4ZqL0lYT5glWkpNdTr+is08icCuEG0OrB4TkGBjEYUZzNgZK3yTBzS+rU2TwPkSFVhQFNeWOj0oXlBzZosPit0fk7MTazV/gx7IYfxyRADzLy4I='),

('application', 'localdev', 'master', 'datasource.mongodb.host', 'localhost'),
('application', 'localdev', 'master', 'datasource.mongodb.port', '27017'),


('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.provider.battlenet.authorization-uri', 'https://kr.battle.net/oauth/authorize'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.provider.battlenet.token-uri', 'https://kr.battle.net/oauth/token'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.provider.battlenet.token-uri', 'https://kr.battle.net/oauth/token'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.battlenet.provider', 'battlenet'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.battlenet.scope', 'wow.profile'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.battlenet.authorization-grant-type', 'authorization_code'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.battlenet.redirect-uri', 'http://localhost:8082/login/oauth2/code/battlenet'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.battlenet.client-name', 'battlenet client'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.battlenet.client-id', 'test'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.battlenet.client-secret', 'test'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.facebook.provider', 'facebook'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.facebook.client-id', '{cipher}AQATs7quHp7EpzySH5/ykS/8Jog250k4tc33SSbvnCdy/yyyR6gGwO70PgEb33e1S0ZUiGYAzi4NeqwDOSNLB7TetprxhS+UY76NmP6oMAUdDsH+Wt5bIo1Bi2PuG1Ps4DiCI1ERqAp9bMVx/P11iJh0s/YlepKFJuYt16IZRI/mpYdHkjYALX7w5L8tR7e+OEkK+PhQkCWsUihhgL4eQojYqB+HIwb87jWAuoPtjk2c29/pb8nthMbHYpkA6T1Me7ybevRsNrcjz7qifeBevj6Uo+gKupv0HAmAfPe1r/1X9HO4Mb7t61Ghmv6SqtWtqg2DNZLpNGoNonUzDfY7lAZep6+ddddiGaNvISLS+Uil2bW/5q7rlvc8QQ6+KkVZkmU='),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.facebook.client-secret', '{cipher}AQCPufENsQsJX1x6l7TNd5CEnWX/h6JRrWZQYOPXk16JgeQtrWozKu6vXj8+4qtrTj88ccMshyIpPEElG/WnMpisnwm2OEzY3BSEx63dQpmtDntuFlkQ3AikGZJzn3wu+fJWI7DibfxrQOFaFB7yGjsV2ysCnDWaAttLNQU1Yclb76kecp5cAydzqfhh8gRIYZ9266ZtU+AYjNp3hsyqcSqybPVAAOuM9b4RyhAbxTEM9I+fGJRFW4SJpV7F7z3gHoPcFeHu5rtle4HMCdW1uj+ZpAK93XOJIf6oMc//RTG09lVYzxic2cqcv+4qD/bzlpUxoIDTrdgtmPQZQer3fMII2ERLFknkVXhRmlntzNGAzRk00Hko6Zuogka8+QxBx2Tppx+Lu10nyP5dBBRna/gXUzu9NxsuyACDuvLzvKGJyg=='),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.github.provider', 'github'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.github.client-id', '{cipher}AQCFScb58xmtbJDp/Rn0SsoSNSMhFpdcC3sP1SmScCRMWdIXcGQumE3BbBJQF5xE5FVuyXzxjYk6Nt+bBW0mSMiTbQXavqaQ501+uiU7SjnuTd+sD4/Loe7TtxkDO5XcUaQMzLkgBpYzId9y5dKhvyZhaC4uEtkDmT2BN+HYSMsKAg1k5wgNS6AsbL+dMjS1JW5boQLf8WpoUCwIf/wo9TR3LOvUSgOdrI8abEObx6Jtd+oFTWRaZBBU0G6sw7u4nkdnrgYy7uGNiKsB3f4aLzh9aECfU/y95t619lMUv1rkTuK2izuTakQb9ljG8Zrud1QDUDWaWZJTacdAuJ37WYyP/To5L4HG6QHyXuHvUYjAHKCtFPOeR53Thi4AOV78SnZ3PBY+RrehLpYxvzZQgxEs'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.github.client-secret', '{cipher}AQCJTcqnh6IkBYgygzWeWOU+9ff9c6tiYkr1bwReNO95831Mvj+5FO0fjvh6hRkyHUfaX6xGbtc5tFmCf5Yf1rsTH3ha0B1qICfp7xVyrqxA78i2+O6S+WF8dOFOLB9U5PGMYEe7bxzaSozalCyHel9x5GWbEVpqHXnV3F924iZIGVnamRg2oYMSkOLn9Pnpm9xKPdiTYVx5AsbdP6sL1AlCse2dAAOwCaM3Vq+c+YVPDant2ZTztOuMldLB3GcTN9lD1s+zg7tOMFLuW8p3QYps8C7zyzIqrpLBfYL64l4VEaNGDV/q+uFOvCYl+ovAKyQZfwqW3iKuNskhlLCNq9tdc7mj9i7gFqK3UcUrnPCaZ2Lot7eWF+yKaWhrPknR23/IPDTUdbIwWuQdVHX9MpUGom8qupn4XDoS9etNe8qHmg=='),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.google.provider', 'google'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.google.client-id', '{cipher}AQBUzaF1d6vLNSpXDH+IG+1g9ahow0jRDfSUocr0Ssxz1schiplwLn+24kiNzLyKuhBc0+XPMc7s8avSAWBxychzOa9Amr16LW6cqSszBvn5OayN1gqewJPbV0LMUDwmuZ037O0xqiIsYoOTjOOdefdzgJ20RQDiNDocfi6U4bD0CUYvq/z7hauFcuk+RSJhs6i3bZ+hYv8mqHNCBT0qHJeGIlgjghZA84bFVhkv75kQklJWFkk8ARNZjBSRCdDvmTnDJYsvusWnW4xfQlhikuc6W0BXIkD8HxidFn1ozIS4jOzgBHmwrT0iNbRJWd61EhhqOvMa/vLHmkpNU4Scn3tAC+dznH5ePZpErH4TSIOYbpNPCqESJPjaRuW1oBX9rH4bMrhct8qxUa1yyknnSxAFhmutz+WvPV/SDkSuFkLqHd8WGJFQQkP0UIgsuoMZdqSc5f4SkqUdOxuFTp+NL15s'),
('bluesky-project', 'default', 'master', 'spring.security.oauth2.client.registration.google.client-secret', '{cipher}AQCGMSAOaaaudTF8TtXUWKd5jsn2frjcOlcUgPFPe/ejnn5vEyOhgnrbaVtgaqVKuqbR2jpbXAIw1LcH8DWW3/BJbAKOi4WMUjNheLy3S1J/gDg2GsaW0QzcKEPIcGjS/oG/MO5GEXH5EBwcK+1vwnpinxhuh85CHpX/4oFx+G+ywtKiUenIfzdWt7SgZDJ84gggYRHNI9XCri/loe4bIlp3Hh+fyAqlPBRaLxszk22Z7CNyKv3ZQ7a5WanITOeqMg0IUEIXRSw4QNnMQFk5WUrAN20XeVGwzeja2mT7N7DB8HxDQ8LDgiBN9r6bREwwGl1pFx0xHgtCDQbc2BaaufpKZdvemFWIisu1HgYI6ScG5ZGpubjBcoYQDNE2hme9YHWvV2tg/ymD2N4vWrxgfpgx'),

('bluesky-project', 'default', 'master', 'api.battleNet.apiHost', 'https://kr.api.battle.net'),
('bluesky-project', 'default', 'master', 'api.battleNet.host', 'https://kr.battle.net'),
('bluesky-project', 'default', 'master', 'api.battleNet.apiKey', 'test');