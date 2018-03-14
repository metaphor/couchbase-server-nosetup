FROM couchbase/server:community-4.5.1

ENV MEMORY_QUOTA 256
ENV INDEX_MEMORY_QUOTA 256
ENV FTS_MEMORY_QUOTA 256

ENV SERVICES "kv,n1ql,index,fts"

ENV USERNAME "Administrator"
ENV PASSWORD "password"

ENV BUCKET1 "bucket1"
ENV BUCKET1PASS "bucket1pass"

ENV BUCKET2 "bucket2"
ENV BUCKET2PASS "bucket2pass"

ENV CLUSTER_HOST ""
ENV CLUSTER_REBALANCE ""

COPY entrypoint.sh /config-entrypoint.sh

ENTRYPOINT ["/config-entrypoint.sh"]
