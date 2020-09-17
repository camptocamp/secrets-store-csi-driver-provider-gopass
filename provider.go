package main

import (
	"context"
	"os"

	"github.com/apex/log"
)

type Provider struct {
}

// NewProvider creates a new Gopass provider
func NewProvider() (*Provider, error) {
	log.Debugf("NewGopassProvider")
	var p Provider
	return &p, nil
}

// MountSecretsStoreObjectContent mounts content of the gopass object to target path
func (p *Provider) MountSecretsStoreObjectContent(ctx context.Context, attrib map[string]string, secrets map[string]string, targetPath string, permission os.FileMode) (err error) {
	return nil
}
