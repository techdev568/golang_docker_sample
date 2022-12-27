package main

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {

	routes := gin.Default()
	routes.GET("/", func(c *gin.Context) {
		fmt.Println("main")
		c.IndentedJSON(http.StatusOK, gin.H{"Message": "Hello"})
	})
	routes.Run(":8080")

}
