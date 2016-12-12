#
# Dockerfile
#
#

FROM sebp/elk:es241_l240_k461

ENV ES_HOME /usr/share/elasticsearch

# Install Marvel
RUN gosu elasticsearch ${ES_HOME}/bin/plugin install license \
 && gosu elasticsearch ${ES_HOME}/bin/plugin install marvel-agent \
 && gosu kibana ${KIBANA_HOME}/bin/kibana plugin --install elasticsearch/marvel/latest

# Install Sense
RUN gosu kibana ${KIBANA_HOME}/bin/kibana plugin --install elastic/sense

# Configure Elasticsearch
ADD elasticsearch-master.yml /etc/elasticsearch/elasticsearch.yml
