package azurerm

// #Terraform defines the schema of terraform json document that uses the Azure provider.
#Terraform: {
	provider?: azurerm: #provider

	resource?: [type=#azurermTypes]: [name=string]: _res[type]
	data?: [type=#azurermTypes]: [name=string]:     _ds[type]
}

#azurermTypes: =~"^azurerm_.+"

_res: [#azurermTypes]: _
_ds: [#azurermTypes]:  _
