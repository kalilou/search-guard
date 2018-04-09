FROM sebp/elk

ENV ES_HOME /opt/elasticsearch
WORKDIR ${ES_HOME}

RUN CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin \
    install -b com.floragunn:search-guard-6:6.2.3-22.0

RUN find / -name sgadmin_demo.sh

RUN cd plugins/search-guard-6/tools && chmod +x install_demo_configuration.sh && ./install_demo_configuration.sh



