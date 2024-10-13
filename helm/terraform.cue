package helm

// #Terraform defines the schema of terraform json document that uses the Helm provider.
#Terraform: {
  terraform: required_providers: helm: {
      source: "hashicorp/helm"
      version: "= 2.16.0"
	}

	provider?: helm: #provider

	resource?: [type=#helmTypes]: [name=string]: _res[type]
	data?: [type=#helmTypes]: [name=string]:     _ds[type]
}

#helmTypes: =~"^helm_.+"

_res: [#helmTypes]: _
_ds: [#helmTypes]:  _
