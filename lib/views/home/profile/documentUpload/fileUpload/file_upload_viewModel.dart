import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../app/app.locator.dart';
import '../../../../../models/document_type_model.dart';
import '../camera_upload/camera_view.dart';

class FileUploadViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  upLoadViaCamera(DocumentTypeModel documentTypeModel) {
    _navigationService.navigateToView(CameraView(
      documentTypeModel: documentTypeModel,
    ));
  }
}
