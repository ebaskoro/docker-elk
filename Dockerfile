#
# Dockerfile
#
#

FROM sebp/elk:es241_l240_k461

# Install Marvel
RUN /usr/share/elasticsearch/bin/plugin install license \
 && /usr/share/elasticsearch/bin/plugin install marvel-agent \
 && ${KIBANA_HOME}/bin/kibana plugin --install elasticsearch/marvel/latest

# Install Sense
RUN ${KIBANA_HOME}/bin/kibana plugin --install elastic/sense

# Configure Elasticsearch
ADD elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
