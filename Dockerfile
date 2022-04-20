FROM neo4j:latest

CMD neo4j-admin set-initial-password $PASSWORD && \
	neo4j console
# ENTRYPOINT ["cypher-shell", "-a bolt://localhost:7687", "-u neo4j", "-p neo4j", "-d system", "-P \"password => 1234\" ", "-f ./scripts/change-password.cypher"]

EXPOSE 7687
EXPOSE 7474
EXPOSE 7473