<?php require APPROOT . '/view/inc/header.php'; ?>
    
    <?php flash('delete_user_success'); ?>
    <?php flash('edit_user_success'); ?>
    <div class="mt-3">
        <h2>User Attempts</h2>        
    </div>
    
    <div class="mt-3">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Name</th>
                    <th scope="col">Exam ID</th>
                    <th scope="col">Attempt Count</th>
                    <th scope="col">Attempted At</th>
                    <th scope="col">Result</th>
                    <th scope="col"></th>
                    <th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($data['attempts'] as $attempt) : ?>
                    <tr>
                        <th scope="row">
                            <?php echo $attempt->name; ?></th>
                        <td><?php echo $attempt->quiz_id; ?></td>
                        <td><?php echo $attempt->attempt_count; ?></td>
                        <td><?php echo $attempt->attempted_at; ?></td>
                        <td class="text-success font-weight-bold"><?php echo $attempt->result; ?> %</td>
                        <td></td>
                        <td></td>
                    </tr> 
                <?php endforeach; ?>         
            </tbody>
        </table>
    </div>
  
<?php require APPROOT . '/view/inc/footer.php'; ?>