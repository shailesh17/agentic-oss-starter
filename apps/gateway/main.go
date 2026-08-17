package main

import (
	"encoding/json"
	"fmt"
	"net/http"
)

type GatewayStatus struct {
	Status  string `json:"status"`
	Service string `json:"service"`
	Version string `json:"version"`
}

func StatusHandler(w http.ResponseWriter, r *http.Request) {
	status := GatewayStatus{
		Status:  "healthy",
		Service: "agentic-gateway",
		Version: "0.1.0",
	}
	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	_ = json.NewEncoder(w).Encode(status)
}

func main() {
	fmt.Println("[Gateway Service] High-Performance Go Proxy & API Gateway Initialized")
}
