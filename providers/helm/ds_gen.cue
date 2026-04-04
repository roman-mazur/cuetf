package helm

import "github.com/roman-mazur/cuetf/providers/helm/data"

#Terraform: {
	#helmPrefix: string
	_#ds: "\(#helmPrefix)_template": data.#helm_template

}
