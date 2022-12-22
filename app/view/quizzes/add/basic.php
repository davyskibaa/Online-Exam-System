<?php require APPROOT . '/view/inc/header.php'; ?>

    <a href="<?php echo URLROOT; ?>/quizzes" class="btn btn-light">
        <i class="fa fa-backward"></i> Back
    </a>    
    <div class="card card-body bg-light mt-5">
        <?php flash('no_quiz_added'); ?>
        <h2>Add Exam</h2>
        <p>Create an exam with this form</p>
        <form action="<?php echo URLROOT; ?>/quizzes/addbasic" method="post">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" name="title" class="form-control form-control-lg <?php echo (!empty($data['title_err'])) ? 'is-invalid' : ''; ?>" value="<?php echo $data['title']; ?>">
                <span class="invalid-feedback"><?php echo $data['title_err']; ?></span>
            </div>
            <div class="form-group">
                <label for="questioncount">Number of Questions:</label>
                <input type="text" name="questioncount" class="form-control form-control-lg <?php echo (!empty($data['questioncount_err'])) ? 'is-invalid' : ''; ?>" value="<?php echo $data['questioncount']; ?>">
                <span class="invalid-feedback"><?php echo $data['questioncount_err']; ?></span>
            </div>
            <input type="submit" class="btn btn-success" value="Submit">          
        </form>
    </div>

<?php require APPROOT . '/view/inc/footer.php'; ?>