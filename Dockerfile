#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#
FROM openjdk:8-jdk-alpine

ARG notification_port=2031

ENV server.max-http-header-size=16384 \
    cassandra.clusterName="Test Cluster" \
    server.port=$notification_port \
    system.initialclientid=service-runner

WORKDIR /tmp
COPY notification-service-boot-0.1.0-BUILD-SNAPSHOT.jar .

CMD ["java", "-jar", "notification-service-boot-0.1.0-BUILD-SNAPSHOT.jar"]
