package helm

// #Terraform defines the schema of terraform json document that uses the Helm provider.
#Terraform: {
	provider?: helm: #provider

	resource?: [type=#helmTypes]: [name=string]: _res[type]
	data?: [type=#helmTypes]: [name=string]:     _ds[type]
}

#helmTypes: =~"^helm_.+"

_res: [#helmTypes]: _
_ds: [#helmTypes]:  _
