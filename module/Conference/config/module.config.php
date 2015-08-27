<?php
return array(
    'controllers' => array(
        'factories' => array(
            'Conference\\V1\\Rpc\\Timezone\\Controller' => 'Conference\\V1\\Rpc\\Timezone\\TimezoneControllerFactory',
        ),
    ),
    'router' => array(
        'routes' => array(
            'conference.rpc.timezone' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/timezone',
                    'defaults' => array(
                        'controller' => 'Conference\\V1\\Rpc\\Timezone\\Controller',
                        'action' => 'timezone',
                    ),
                ),
            ),
        ),
    ),
    'zf-versioning' => array(
        'uri' => array(
            0 => 'conference.rpc.timezone',
        ),
    ),
    'zf-rpc' => array(
        'Conference\\V1\\Rpc\\Timezone\\Controller' => array(
            'service_name' => 'Timezone',
            'http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'route_name' => 'conference.rpc.timezone',
        ),
    ),
    'zf-content-negotiation' => array(
        'controllers' => array(
            'Conference\\V1\\Rpc\\Timezone\\Controller' => 'Json',
        ),
        'accept_whitelist' => array(
            'Conference\\V1\\Rpc\\Timezone\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/json',
                2 => 'application/*+json',
            ),
        ),
        'content_type_whitelist' => array(
            'Conference\\V1\\Rpc\\Timezone\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/json',
            ),
        ),
    ),
);
