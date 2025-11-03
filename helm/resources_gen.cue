package helm

import "github.com/roman-mazur/cuetf/helm/res"

#Terraform: {
	#helmPrefix: string
	_#res: "\(#helmPrefix)_release": res.#helm_release

}
