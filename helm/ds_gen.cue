package helm

import "github.com/roman-mazur/cuetf/helm/data"

#Terraform: {
	#prefix: string
	#ds: "\(#prefix)_template": data.#helm_template

}
