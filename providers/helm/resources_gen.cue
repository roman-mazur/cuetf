package helm

import (
	"github.com/roman-mazur/cuetf"
	"github.com/roman-mazur/cuetf/providers/helm/res"
)

#Terraform: {
	#helmPrefix: string
	_#res: "\(#helmPrefix)_release": close({res.helm_release & cuetf.MetaArgs})

}
