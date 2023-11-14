import 'package:tadeotax_android/pages/user/rating_model.dart';

class RatingController {
  RatingModel _ratingModel = RatingModel();

  RatingModel get ratingModel => _ratingModel;

  void updateRating(int stars) {
    _ratingModel.stars = stars;
  }

  void submitRating() {
    if (_ratingModel.stars > 0) {
      _ratingModel.thankYouMessage = '¡Gracias por tu calificación!';
    }
  }
}
