package azurerm

#Terraform: {
	#prefix:       string | *"azurerm"
	#providerName: =~"^\(#prefix)_.+"

	#res: [#providerName]: _
	#ds: [#providerName]:  _

	terraform?: required_providers?: (#prefix): {
		source:  "hashicorp/azurerm"
		version: #Version
	}
	provider?: (#prefix): #provider

	resource?: [type=#providerName]: [name=string]: #res[type]
	data?: [type=#providerName]: [name=string]:     #ds[type]
}
