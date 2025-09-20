package res

import "list"

#azurerm_express_route_port: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_express_route_port")
	close({
		bandwidth_in_gbps!: number
		billing_type?:      string
		encapsulation!:     string
		ethertype?:         string
		guid?:              string
		id?:                string
		location!:          string
		identity?: matchN(1, [#identity, list.MaxItems(1) & [...#identity]])
		link1?: matchN(1, [#link1, list.MaxItems(1) & [...#link1]])
		link2?: matchN(1, [#link2, list.MaxItems(1) & [...#link2]])
		mtu?:                 string
		name!:                string
		peering_location!:    string
		resource_group_name!: string
		tags?: [string]: string
		timeouts?: #timeouts
	})

	#identity: close({
		identity_ids?: [...string]
		principal_id?: string
		tenant_id?:    string
		type!:         string
	})

	#link1: close({
		admin_enabled?:                 bool
		connector_type?:                string
		id?:                            string
		interface_name?:                string
		macsec_cak_keyvault_secret_id?: string
		macsec_cipher?:                 string
		macsec_ckn_keyvault_secret_id?: string
		macsec_sci_enabled?:            bool
		patch_panel_id?:                string
		rack_id?:                       string
		router_name?:                   string
	})

	#link2: close({
		admin_enabled?:                 bool
		connector_type?:                string
		id?:                            string
		interface_name?:                string
		macsec_cak_keyvault_secret_id?: string
		macsec_cipher?:                 string
		macsec_ckn_keyvault_secret_id?: string
		macsec_sci_enabled?:            bool
		patch_panel_id?:                string
		rack_id?:                       string
		router_name?:                   string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
