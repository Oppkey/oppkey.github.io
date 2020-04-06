'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/manifest.json": "77d50107d93309a7958581a07ee8f530",
"/index.html": "a701d0931e11700ef56cf633f22f1458",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/main.dart.js": "ea02798fee2f3e0a2eb42492b08d6fc7",
"/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"/assets/AssetManifest.json": "b32d9f3635be5b94db2fdcbbdb5dbb25",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/FontManifest.json": "902d1f481c0b18e2b7b6ded71333146c",
"/assets/LICENSE": "964211db6a8b173b1744e68da77ce459",
"/assets/assets/images/flame_success.png": "fc3e64d36913c92ca00d3b6d33751e4c",
"/assets/assets/fonts/Rubik/Rubik-Italic.ttf": "9a5eb2e5a64a12fe3cf7b6436690296a",
"/assets/assets/fonts/Rubik/Rubik-Bold.ttf": "9a6fb6f5cd3aa4ab1adaaab1f693f266",
"/assets/assets/fonts/Rubik/Rubik-Regular.ttf": "b3d0902b533ff4c4f1698a2f96ddabab"
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
