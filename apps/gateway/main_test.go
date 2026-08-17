package main

import (
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestStatusHandler(t *testing.T) {
	req := httptest.NewRequest(http.MethodGet, "/status", nil)
	rec := httptest.NewRecorder()

	StatusHandler(rec, req)

	if rec.Code != http.StatusOK {
		t.Fatalf("expected status %d, got %d", http.StatusOK, rec.Code)
	}

	var status GatewayStatus
	if err := json.NewDecoder(rec.Body).Decode(&status); err != nil {
		t.Fatalf("failed to decode response: %v", err)
	}

	if status.Status != "healthy" {
		t.Errorf("expected status 'healthy', got '%s'", status.Status)
	}
	if status.Service != "agentic-gateway" {
		t.Errorf("expected service 'agentic-gateway', got '%s'", status.Service)
	}
}
