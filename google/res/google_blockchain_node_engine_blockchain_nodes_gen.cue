package res

import "list"

#google_blockchain_node_engine_blockchain_nodes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_blockchain_node_engine_blockchain_nodes")
	close({
		// ID of the requesting object.
		blockchain_node_id!: string

		// User-provided key-value pairs Possible values: ["ETHEREUM"]
		blockchain_type?: string

		// The connection information through which to interact with a
		// blockchain node.
		connection_info?: [...close({
			endpoint_info?: [...close({
				json_rpc_api_endpoint?:   string
				websockets_api_endpoint?: string
			})]
			service_attachment?: string
		})]

		// The timestamp at which the blockchain node was first created.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// User-provided key-value pairs
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location of Blockchain Node being created.
		location!: string
		ethereum_details?: matchN(1, [#ethereum_details, list.MaxItems(1) & [...#ethereum_details]])

		// The fully qualified name of the blockchain node. e.g.
		// projects/my-project/locations/us-central1/blockchainNodes/my-node.
		name?:     string
		project?:  string
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The timestamp at which the blockchain node was last updated.
		update_time?: string
	})

	#ethereum_details: close({
		// User-provided key-value pairs
		additional_endpoints?: [...close({
			beacon_api_endpoint?:                              string
			beacon_prometheus_metrics_api_endpoint?:           string
			execution_client_prometheus_metrics_api_endpoint?: string
		})]

		// Enables JSON-RPC access to functions in the admin namespace.
		// Defaults to false.
		api_enable_admin?: bool

		// Enables JSON-RPC access to functions in the debug namespace.
		// Defaults to false.
		api_enable_debug?: bool

		// The consensus client Possible values:
		// ["CONSENSUS_CLIENT_UNSPECIFIED", "LIGHTHOUSE"]
		consensus_client?: string

		// The execution client Possible values:
		// ["EXECUTION_CLIENT_UNSPECIFIED", "GETH", "ERIGON"]
		execution_client?: string
		geth_details?: matchN(1, [_#defs."/$defs/ethereum_details/$defs/geth_details", list.MaxItems(1) & [..._#defs."/$defs/ethereum_details/$defs/geth_details"]])
		validator_config?: matchN(1, [_#defs."/$defs/ethereum_details/$defs/validator_config", list.MaxItems(1) & [..._#defs."/$defs/ethereum_details/$defs/validator_config"]])

		// The Ethereum environment being accessed. Possible values:
		// ["MAINNET", "TESTNET_GOERLI_PRATER", "TESTNET_SEPOLIA"]
		network?: string

		// The type of Ethereum node. Possible values: ["LIGHT", "FULL",
		// "ARCHIVE"]
		node_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/ethereum_details/$defs/geth_details": close({
		// Blockchain garbage collection modes. Only applicable when
		// NodeType is FULL or ARCHIVE. Possible values: ["FULL",
		// "ARCHIVE"]
		garbage_collection_mode?: string
	})

	_#defs: "/$defs/ethereum_details/$defs/validator_config": close({
		// URLs for MEV-relay services to use for block building. When
		// set, a managed MEV-boost service is configured on the beacon
		// client.
		mev_relay_urls?: [...string]
	})
}
