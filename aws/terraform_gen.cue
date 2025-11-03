package aws

#Terraform: {
	#prefix:       string | *"aws"
	#providerName: =~"^\(#prefix)_.+"

	#res: [#providerName]: _
	#ds: [#providerName]:  _

	terraform?: required_providers?: (#prefix): {
		source:  "hashicorp/aws"
		version: #Version
	}
	provider?: (#prefix): #provider

	resource?: [type=#providerName]: [name=string]: #res[type]
	data?: [type=#providerName]: [name=string]:     #ds[type]
}
