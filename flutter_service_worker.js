'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "manifest.json": "77d50107d93309a7958581a07ee8f530",
"index.html": "a701d0931e11700ef56cf633f22f1458",
"/": "a701d0931e11700ef56cf633f22f1458",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"main.dart.js": "f539ddf9ed5d6e02141f3de8dabcb29a",
"favicon.png": "1cf9272cae96fa224bd2279317798e33",
"assets/AssetManifest.json": "b88d2663c72acd7997959e372a5c2fe8",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/FontManifest.json": "902d1f481c0b18e2b7b6ded71333146c",
"assets/LICENSE": "ab2aa3d841e136ad7140eae36887ee32",
"assets/assets/images/demo.png": "9440146d7ab9d25a5479b10a49a4297d",
"assets/assets/images/hero.png": "e593722b496c58927fa3d1efe0386d16",
"assets/assets/images/flame_success.png": "fc3e64d36913c92ca00d3b6d33751e4c",
"assets/assets/images/target.png": "a69ff846c67569c409274ca912478542",
"assets/assets/images/captain.png": "ae0a266626d8e601365d93071faed16f",
"assets/assets/images/main/hands.png": "cce9d71dcd3f6890e67bb6c883d69713",
"assets/assets/images/product.png": "5a6f23cef46f4597ade0f7bdb76ce670",
"assets/assets/images/send.png": "171357a2dbbed55450662cdd3ad5e338",
"assets/assets/fonts/Rubik/Rubik-Italic.ttf": "9a5eb2e5a64a12fe3cf7b6436690296a",
"assets/assets/fonts/Rubik/Rubik-Bold.ttf": "9a6fb6f5cd3aa4ab1adaaab1f693f266",
"assets/assets/fonts/Rubik/Rubik-Regular.ttf": "b3d0902b533ff4c4f1698a2f96ddabab"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
