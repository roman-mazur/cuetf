package helm

import "github.com/roman-mazur/cuetf/helm/res"

#Terraform: {
	#prefix: string
	#res: "\(#prefix)_release": res.#helm_release

}
