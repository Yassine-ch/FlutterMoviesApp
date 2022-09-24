class ApiConstance{
  static const String baseUrl="https://api.themoviedb.org/3/";
  static const String apiKey="api_key=9b256c94aad1c720ccadcbc6158a09d7";
  static const String nowPlayingMoviesPath="$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String getPopularMoviesPath="$baseUrl/movie/popular?api_key=$apiKey";
  static const String topRatedMoviesPath="$baseUrl/movie/top_rated?api_key=$apiKey";
}