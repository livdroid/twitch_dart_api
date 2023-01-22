enum TokenStatus {
  // token is valid, can connect
  valid,
  // Token invalid, need to show the auth page again
  invalid,
  // an error returned but not related to token validity
  error,
  // other case
  unknown
}
