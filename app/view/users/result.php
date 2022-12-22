<?php require APPROOT . '/view/inc/header.php'; ?>
  
    <div class="mt-3">
        <h2>Results</h2>
    </div>
    
    <div class="mt-3">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Exam</th>
                    <th scope="col">Attempt</th>
                    <th scope="col">Result</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($data['results'] as $result) : ?>
                    <tr>
                        <th scope="row"><?php echo $result->quiz_id; ?></th>
                        <td><?php echo $result->attempt_count; ?></td>
                        <td class="text-success"><?php echo $result->result; ?> %</td>
                    </tr> 
                <?php endforeach; ?>         
            </tbody>
        </table>
    </div>

<?php require APPROOT . '/view/inc/footer.php'; ?>