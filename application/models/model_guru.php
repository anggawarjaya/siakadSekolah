<?php

  class Model_guru extends CI_Model
  {

    public $table = "tbl_guru";

    function save($foto)
    {
      $data = array(
        //tabel di database => name di form
        'nuptk'       => $this->input->post('nuptk', TRUE),
        'nama_guru'   => $this->input->post('nama_guru', TRUE),
        'gender'      => $this->input->post('gender', TRUE),
        'username'    => $this->input->post('username', TRUE),
        'password'    => md5($this->input->post('password', TRUE)),
        'foto'					  => $foto
      );
      $this->db->insert($this->table, $data);
    }

    function update($foto)
    {
      if (empty($foto)) {
				$data = array(
					//tabel di database => name di form
          'nuptk'       => $this->input->post('nuptk', TRUE),
          'nama_guru'   => $this->input->post('nama_guru', TRUE),
          'gender'      => $this->input->post('gender', TRUE),
          'username'    => $this->input->post('username', TRUE),
          'password'    => md5($this->input->post('password', TRUE)),
				);
			} else {
				$data = array(
					//tabel di database => name di form
          'nuptk'       => $this->input->post('nuptk', TRUE),
          'nama_guru'   => $this->input->post('nama_guru', TRUE),
          'gender'      => $this->input->post('gender', TRUE),
          'username'    => $this->input->post('username', TRUE),
          'password'    => md5($this->input->post('password', TRUE)),
					'foto'					  => $foto
				);
			}		
			$id_user 	= $this->input->post('id_guru', TRUE);
			$this->db->where('id_guru', $id_user);
			$this->db->update($this->table, $data);

      $data = array(
        //tabel di database => name di form
        'nuptk'       => $this->input->post('nuptk', TRUE),
        'nama_guru'   => $this->input->post('nama_guru', TRUE),
        'gender'      => $this->input->post('gender', TRUE),
        'username'    => $this->input->post('username', TRUE),
        'password'    => md5($this->input->post('password', TRUE)),
        //'semester_aktif'  = $this->input->post('semester_aktif', TRUE)
      );
    }

    function login($username, $password)
    {
      $this->db->where('username', $username);
      $this->db->where('password', md5($password));
      $user = $this->db->get('tbl_guru')->row_array();
      return $user;
    }

  }

?>