package helm

import "github.com/roman-mazur/cuetf/helm/data"

#Terraform: {
	#helmPrefix: string
	_#ds: "\(#helmPrefix)_template": data.#helm_template

}
