var Util = {};
(function(app) {
	app.onlyOnePicturePreview = function(inputTypeFileId, applyViewTargetId) {
		$(inputTypeFileId).on("change", function() {
			var reader = new FileReader();
			reader.onload = function(e) {
				$(applyViewTargetId).attr('src', e.target.result);
			};
			reader.readAsDataURL(this.files[0]);
		});
	};
})(Util);