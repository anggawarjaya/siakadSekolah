<?php 
class Landing extends CI_Controller
{
    // function __construct()
    // {
    //     parent::__construct();
    //     $this->load->model();
    // }

    function index()
    {
        $this->load->view('landing');
    }
}

?>