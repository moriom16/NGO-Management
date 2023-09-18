<?php include('connection.php');

if(isset($_GET['id'])){
$qry = $conn->query("SELECT * FROM loan_list where id = ".$_GET['id']);
foreach($qry->fetch_array() as $k => $v){
	$$k = $v;
}
}
?>
<div class="container-fluid">
<?php include('loan_header.php');
?>
	<div class="col-lg-8" style="margin:0 auto;left:180px;">
	<form action="" id="loan-application">
		<input type="hidden" name="id" value="<?php echo isset($_GET['id']) ? $_GET['id'] : '' ?>">
		<div class="row">
			<div class="col-md-4">
				<label class="control-label">Borrower</label>
				<?php
				$borrower = $conn->query("SELECT *,concat(lastname,', ',firstname,' ',middlename) as name FROM borrowers order by concat(lastname,', ',firstname,' ',middlename) asc ");
				?>
				<select name="borrower_id" id="borrower_id" class="custom-select browser-default select2">
					<option value=""></option>
						<?php while($row = $borrower->fetch_assoc()): ?>
							<option value="<?php echo $row['id'] ?>" <?php echo isset($borrower_id) && $borrower_id == $row['id'] ? "selected" : '' ?>><?php echo $row['name'] . ' | Tax ID:'.$row['tax_id'] ?></option>
						<?php endwhile; ?>
				</select>
			</div>
			<div class="col-md-4">
				<label class="control-label">Loan Type</label>
				<?php
				$type = $conn->query("SELECT * FROM loan_types order by `type_name` desc ");
				?>
				<select name="loan_type_id" id="loan_type_id" class="custom-select browser-default select2">
					<option value=""></option>
						<?php while($row = $type->fetch_assoc()): ?>
							<option value="<?php echo $row['id'] ?>" <?php echo isset($loan_type_id) && $loan_type_id == $row['id'] ? "selected" : '' ?>><?php echo $row['type_name'] ?></option>
						<?php endwhile; ?>
				</select>
			</div>
			
		</div>

		<div class="row">
			<div class="col-md-4">
				<label class="control-label">Loan Plan</label>
				<?php
				$plan = $conn->query("SELECT * FROM loan_plan order by `months` desc ");
				?>
				<select name="plan_id" id="plan_id" class="custom-select browser-default select2">
					<option value=""></option>
						<?php while($row = $plan->fetch_assoc()): ?>
							<option value="<?php echo $row['id'] ?>" <?php echo isset($plan_id) && $plan_id == $row['id'] ? "selected" : '' ?> data-months="<?php echo $row['months'] ?>" data-interest_percentage="<?php echo $row['interest_percentage'] ?>" data-penalty_rate="<?php echo $row['penalty_rate'] ?>"><?php echo $row['months'] . ' month/s [ '.$row['interest_percentage'].'%, '.$row['penalty_rate'].'% ]' ?></option>
						<?php endwhile; ?>
				</select>
				<small>months [ interest%,penalty% ]</small>
			</div>
		<div class="form-group col-md-4">
			<label class="control-label">Loan Amount</label>
			<input type="number" name="amount" class="form-control text-right" step="any" id="" value="<?php echo isset($amount) ? $amount : '' ?>">
		</div>
		</div>
		<div class="row">
			<div class="form-group col-md-4">
			<label class="control-label">Purpose</label>
			<textarea name="purpose" id="" cols="30" rows="2" class="form-control"><?php echo isset($purpose) ? $purpose : '' ?></textarea>
		</div>
		
		<div class="form-group col-md-2 offset-md-2 .justify-content-center">
			<label class="control-label">&nbsp;</label>
			<a href="count.php" class="btn btn-primary btn-sm btn-block align-self-end" type="button" id="calculate">Calculate</a>
		</div>
		</div>
        <!--calculation show-->

            <hr>
		<div id="calculation_table">
        <table width="100%">
            <tr>
                <th class="text-center" width="33.33%">Total Payable Amount</th>
                <th class="text-center" width="33.33%">Monthly Payable Amount</th>
                <th class="text-center" width="33.33%">Penalty Amount</th>
            </tr>
            <tr>
                <td class="text-center"><small><?php echo number_format($monthly * $months,2) ?></small></td>
                <td class="text-center"><small><?php echo number_format($monthly,2) ?></small></td>
                <td class="text-center"><small><?php echo number_format($penalty,2) ?></small></td>
            </tr>
        </table>
		</div>
		