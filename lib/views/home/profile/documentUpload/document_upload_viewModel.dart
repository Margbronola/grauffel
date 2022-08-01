import 'package:egczacademy/models/document_type_model.dart';
import 'package:egczacademy/views/home/profile/documentUpload/camera_upload/camera_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';

class DocumentUploadViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  upLoadViaCamera(DocumentTypeModel documentTypeModel) {
    _navigationService.navigateToView(CameraView(
      documentTypeModel: documentTypeModel,
    ));
  }
}
