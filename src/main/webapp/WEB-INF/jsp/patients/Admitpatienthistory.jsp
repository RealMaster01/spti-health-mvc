<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>SPTI</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<!-- Import jquery cdn -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous">
	
</script>
<style>
.col-md-5 {
	margin-left: 140px;
}

.space-row {
	height: 20px;
	background-color: #f8f9fa;
}

.table.table-striped {
	font-size: 13px;
	color: #333;
}
</style>
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="height-90">
		<div class="main-content">
			<!-- Modal -->
			<div class="modal fade" id="addUserModel" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Admit Patient
								History</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true" onclick="window.history.back()">x</span>
							</button>
						</div>
						<div class="modal-body">
							<h5 class="modal-title mb-3"></h5>
							<form class="login-form"
								action="/opds/historyPatient-from/patients" method="post">
								<div class="row my-2">
									<div class="col-md-12">
										<div class="card">
											<div class="tab-content" id="nav-tabContent">
												<div class="tab-pane fade show active" id="nav-home"
													role="tabpanel" aria-labelledby="nav-home-tab">

													<c:choose>
														<c:when test="${not empty patientList}">


															<table border="1" class="table table-striped">
																<tr>
																	<th>admissionDate</th>
																	<th>diagnosis</th>

																</tr>
																<tr>


																	<td><a
																		href="/treatment/admittreatment/${patientList.id}">${patientList.admissionDate}</a></td>

																	<td>${patientList.diagnosis.diagnosis}</td>


																</tr>
															</table>
														</c:when>
														<c:otherwise>
															<p>No patient data available.</p>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<script type="text/javascript">
												$(window)
														.on(
																'load',
																function() {
																	$(
																			'#addUserModel')
																			.modal(
																					'show');
																});
											</script>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
