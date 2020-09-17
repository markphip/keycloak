FROM jboss/keycloak:11.0.2

COPY themes/target/themes.jar /opt/jboss/keycloak/standalone/deployments/
RUN touch /opt/jboss/keycloak/standalone/deployments/themes.jar.dodeploy
COPY digital.ai-realm.json /opt/jboss/keycloak/

COPY lisbon-entrypoint.sh /opt/jboss/tools
ENTRYPOINT [ "/opt/jboss/tools/lisbon-entrypoint.sh" ]