package elasticstack

testSamples: #Terraform
testSamples: resource: {
	elasticstack_elasticsearch_index: sample: {
		name: "sample"
	}
	elasticstack_kibana_data_view: sample: {
		data_view: title: "sample"
	}
	elasticstack_fleet_agent_policy: sample: {
		name: "bar"
		namespace: "prod"
		global_data_tags: someKey: string_value: "foo"
	}
}
