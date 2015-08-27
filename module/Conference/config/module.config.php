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
            'conference.rest.speaker' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/speaker[/:speaker_id]',
                    'defaults' => array(
                        'controller' => 'Conference\\V1\\Rest\\Speaker\\Controller',
                    ),
                ),
            ),
            'conference.rest.talk' => array(
                'type' => 'Segment',
                'options' => array(
                    'route' => '/talk[/:talk_id]',
                    'defaults' => array(
                        'controller' => 'Conference\\V1\\Rest\\Talk\\Controller',
                    ),
                ),
            ),
        ),
    ),
    'zf-versioning' => array(
        'uri' => array(
            0 => 'conference.rpc.timezone',
            1 => 'conference.rest.speaker',
            2 => 'conference.rest.talk',
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
            'Conference\\V1\\Rest\\Speaker\\Controller' => 'HalJson',
            'Conference\\V1\\Rest\\Talk\\Controller' => 'HalJson',
        ),
        'accept_whitelist' => array(
            'Conference\\V1\\Rpc\\Timezone\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/json',
                2 => 'application/*+json',
            ),
            'Conference\\V1\\Rest\\Speaker\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
            'Conference\\V1\\Rest\\Talk\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/hal+json',
                2 => 'application/json',
            ),
        ),
        'content_type_whitelist' => array(
            'Conference\\V1\\Rpc\\Timezone\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/json',
            ),
            'Conference\\V1\\Rest\\Speaker\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/json',
            ),
            'Conference\\V1\\Rest\\Talk\\Controller' => array(
                0 => 'application/vnd.conference.v1+json',
                1 => 'application/json',
            ),
        ),
    ),
    'service_manager' => array(
        'factories' => array(
            'Conference\\V1\\Rest\\Speaker\\SpeakerResource' => 'Conference\\V1\\Rest\\Speaker\\SpeakerResourceFactory',
            'Conference\\V1\\Rest\\Talk\\TalkResource' => 'Conference\\V1\\Rest\\Talk\\TalkResourceFactory',
        ),
    ),
    'zf-rest' => array(
        'Conference\\V1\\Rest\\Speaker\\Controller' => array(
            'listener' => 'Conference\\V1\\Rest\\Speaker\\SpeakerResource',
            'route_name' => 'conference.rest.speaker',
            'route_identifier_name' => 'speaker_id',
            'collection_name' => 'speaker',
            'entity_http_methods' => array(
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'Conference\\V1\\Rest\\Speaker\\SpeakerEntity',
            'collection_class' => 'Conference\\V1\\Rest\\Speaker\\SpeakerCollection',
            'service_name' => 'Speaker',
        ),
        'Conference\\V1\\Rest\\Talk\\Controller' => array(
            'listener' => 'Conference\\V1\\Rest\\Talk\\TalkResource',
            'route_name' => 'conference.rest.talk',
            'route_identifier_name' => 'talk_id',
            'collection_name' => 'talk',
            'entity_http_methods' => array(
                0 => 'GET',
                1 => 'PATCH',
                2 => 'PUT',
                3 => 'DELETE',
            ),
            'collection_http_methods' => array(
                0 => 'GET',
                1 => 'POST',
            ),
            'collection_query_whitelist' => array(),
            'page_size' => 25,
            'page_size_param' => null,
            'entity_class' => 'Conference\\V1\\Rest\\Talk\\TalkEntity',
            'collection_class' => 'Conference\\V1\\Rest\\Talk\\TalkCollection',
            'service_name' => 'Talk',
        ),
    ),
    'zf-hal' => array(
        'metadata_map' => array(
            'Conference\\V1\\Rest\\Speaker\\SpeakerEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'conference.rest.speaker',
                'route_identifier_name' => 'speaker_id',
                'hydrator' => 'Zend\\Stdlib\\Hydrator\\ArraySerializable',
            ),
            'Conference\\V1\\Rest\\Speaker\\SpeakerCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'conference.rest.speaker',
                'route_identifier_name' => 'speaker_id',
                'is_collection' => true,
            ),
            'Conference\\V1\\Rest\\Talk\\TalkEntity' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'conference.rest.talk',
                'route_identifier_name' => 'talk_id',
                'hydrator' => 'Zend\\Stdlib\\Hydrator\\ArraySerializable',
            ),
            'Conference\\V1\\Rest\\Talk\\TalkCollection' => array(
                'entity_identifier_name' => 'id',
                'route_name' => 'conference.rest.talk',
                'route_identifier_name' => 'talk_id',
                'is_collection' => true,
            ),
        ),
    ),
);
