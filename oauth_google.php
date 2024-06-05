<?php
session_start();

$google_oauth_client_id = '530401934247-9boh2f1dd7ijl7nrvins477qma91u7g6.apps.googleusercontent.com';
$google_oauth_client_secret = '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';
$google_oauth_redirect_uri = "http://localhost:5000/SitoCompleto/login_google.php";
$google_oauth_version = "v3";


if (isset($_GET['code']) && !empty($_GET['code'])) {

    $params = [
        'code' => $_GET['code'],
        'client_id' => $google_oauth_client_id,
        'client_secret' => $google_oauth_client_secret,
        'redirect_uri' => $google_oauth_redirect_uri,
        'grant_type' => 'authorization_code'

    ];

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, 'https://accounts.google.com/o/oauth2/token');
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($ch);
    curl_close($ch);
    $response = json_decode($response, true);
    $_SESSION['access_token'] = $response['access_token'];
} else {
    // Define params and redirect to Google Authentication page
    $params = [
        'response_type' => 'code',
        'client_id' => $google_oauth_client_id,
        'redirect_uri' => $google_oauth_redirect_uri,
        'scope' => 'https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile',
        'access_type' => 'offline',
        'prompt' => 'consent'
    ];
    header('Location: https://accounts.google.com/o/oauth2/auth?' . http_build_query($params));
    exit;
}

?>