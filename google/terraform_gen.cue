package google

#Terraform: {
	#prefix:       string | *"google"
	#providerName: =~"^\(#prefix)_.+"

	#res: [#providerName]: _
	#ds: [#providerName]:  _

	terraform?: required_providers?: (#prefix): {
		source:  "hashicorp/google"
		version: #Version
	}
	provider?: (#prefix): #provider

	resource?: [type=#providerName]: [name=string]: #res[type]
	data?: [type=#providerName]: [name=string]:     #ds[type]
}
