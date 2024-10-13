package elasticstack

// #Terraform defines the schema of terraform json document that uses the Cloudflare provider.
#Terraform: {
	provider?: elasticstack: #provider

	resource?: [type=#elasticstackTypes]: [name=string]: _res[type]
	data?: [type=#elasticstackTypes]: [name=string]:     _ds[type]
}

#elasticstackTypes: =~"^elasticstack_.+"

_res: [#elasticstackTypes]: _
_ds: [#elasticstackTypes]:  _
