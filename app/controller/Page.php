<?php
    class Page extends Controller {
        public function __construct() {}

        public function index() {
            $data = [
                'title' => 'OnlineExam',
                'description' => 'OnlineExam is a web service made to assess student knowledge'
            ];
            $this->view('pages/index', $data);
        }
    }