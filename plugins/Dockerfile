FROM alpine:3.4
MAINTAINER Valery Sushko

RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community wget ca-certificates

ENV PLUGINS_DIR=/opt/sonarqube/extensions/plugins \
    FINDBUGS_PLUGIN_VERSION=3.3 \
    SCMSTAT_PLUGIN_VERSION=0.3.1 \
    JAVA_VERSION=4.3.0.7717 \
    JAVASCRIPT_VERSION=2.18.0.3454 \
    WIDGET_PLUGIN_VERSION=1.7 \
    SONARGRAPH_PLUGIN_VERSION=3.5 \
    ISSUE_ASSIGN_PLUGIN_VERSION=1.6 \
    BUILD_BREAKER_PLUGIN_VERSION=1.1 \
    ISSUES_DENSITY_PLUGIN_VERSION=1.0 \
    PMD_PLUGIN_VERSION=2.4.1 \
    BUILD_STABILITY_PLUGIN_VERSION=1.3 \
    WEB_PLUGIN_VERSION=2.5.0.476 \
    CSHARP_PLUGIN_VERSION=5.5.1.522 \
    BADGES_PLUGIN_VERSION=3.0.1

WORKDIR $PLUGINS_DIR

RUN wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-motion-chart-plugin/1.7/sonar-motion-chart-plugin-1.7.jar \
    && wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-timeline-plugin/1.5/sonar-timeline-plugin-1.5.jar \
    && wget http://sonarsource.bintray.com/Distribution/sonar-xml-plugin/sonar-xml-plugin-1.4.1.jar \
    && wget https://bintray.com/artifact/download/stevespringett/owasp/org/sonarsource/owasp/sonar-dependency-check-plugin/1.0.3/sonar-dependency-check-plugin-1.0.3.jar \
    && wget https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.2.jar \
    && wget https://github.com/AmadeusITGroup/sonar-stash/releases/download/1.2.0-rc1/sonar-stash-plugin-1.2.0-SNAPSHOT.jar \
    && wget http://nexus.talanlabs.com/content/groups/public_release/com/synaptix/sonar-gitlab-plugin/1.7.0/sonar-gitlab-plugin-1.7.0.jar \
    && wget https://github.com/SonarQubeCommunity/sonar-groovy/releases/download/1.4-RC1/sonar-groovy-plugin-1.4-build514.jar \
    && wget https://sonarsource.bintray.com/Distribution/sonar-java-plugin/sonar-java-plugin-$JAVA_VERSION.jar \
    && wget https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-$JAVASCRIPT_VERSION.jar \
    && wget https://github.com/SonarQubeCommunity/sonar-findbugs/releases/download/3.4/sonar-findbugs-plugin-3.4.3.jar \
    && wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-widget-lab-plugin/${WIDGET_PLUGIN_VERSION}/sonar-widget-lab-plugin-${WIDGET_PLUGIN_VERSION}.jar \
    && wget https://github.com/SonarQubeCommunity/sonar-sonargraph/releases/download/sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}/sonar-sonargraph-plugin-${SONARGRAPH_PLUGIN_VERSION}.jar \
    && wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/java/sonar-pmd-plugin/${PMD_PLUGIN_VERSION}/sonar-pmd-plugin-${PMD_PLUGIN_VERSION}.jar \
    && wget https://sonarsource.bintray.com/Distribution/sonar-web-plugin/sonar-web-plugin-${WEB_PLUGIN_VERSION}.jar \
    && wget https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-${CSHARP_PLUGIN_VERSION}.jar \
    && wget https://github.com/QualInsight/qualinsight-plugins-sonarqube-badges/releases/download/qualinsight-plugins-sonarqube-badges-${BADGES_PLUGIN_VERSION}/qualinsight-sonarqube-badges-${BADGES_PLUGIN_VERSION}.jar \
    && wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-build-breaker-plugin/${BUILD_BREAKER_PLUGIN_VERSION}/sonar-build-breaker-plugin-${BUILD_BREAKER_PLUGIN_VERSION}.jar \
    && wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-issues-density-plugin/${ISSUES_DENSITY_PLUGIN_VERSION}/sonar-issues-density-plugin-${ISSUES_DENSITY_PLUGIN_VERSION}.jar

# Does not work
# RUN wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-scm-stats-plugin/${SCMSTAT_PLUGIN_VERSION}/sonar-scm-stats-plugin-${SCMSTAT_PLUGIN_VERSION}.jar
# RUN wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-issue-assign-plugin/${ISSUE_ASSIGN_PLUGIN_VERSION}/sonar-issue-assign-plugin-${ISSUE_ASSIGN_PLUGIN_VERSION}.jar
# RUN wget http://downloads.sonarsource.com/plugins/org/codehaus/sonar-plugins/sonar-build-stability-plugin/${BUILD_STABILITY_PLUGIN_VERSION}/sonar-build-stability-plugin-${BUILD_STABILITY_PLUGIN_VERSION}.jar

VOLUME $PLUGINS_DIR

CMD ls -asl $PLUGINS_DIR
