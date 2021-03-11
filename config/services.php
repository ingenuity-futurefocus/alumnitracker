<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    //  Added Code for Oauth
    'google' => [
        'client_id' => '213477274764914-pi0s2lcdpv9flevqbe9t5ofbjsummcd4.apps.googleusercontent.com',
        'client_secret' => 'uJY_j4-KD-BSgjIx1DhXEBJN',
        'redirect' => 'https://alumnitracker-8ci6a.ondigitalocean.app/auth/google/callback',
    ],
    // End  Added Code
];
