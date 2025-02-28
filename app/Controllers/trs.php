public function produk()
    {
        $data = [
            'title' => 'Shop By Series',
        ];

        $keyword = $this->request->getVar('keyword');
        if($keyword) {
            $data['produks'] = $this->produkModel->search($keyword);
            $data['pager']   = $this->produkModel->pager;
        } else if($this->request->getGet('series')) {
            $data['produks'] = $this->getProductByseries($this->request->getGet('series'));
        } else {
            $data['produks'] = $this->produkModel->paginate(5, 'produk_pagers');
            $data['pager']   = $this->produkModel->pager;
        }
        
        $this->produkModel->select('data_series.nama AS nama_series');
        $this->produkModel->join('data_series', 'data_produk.series = data_series.id_series');
        $series = $this->produkModel->findAll();
        $seriesUnique = [];
        foreach($series as $k) {
            array_push($seriesUnique, $k['nama_series']);
        }
        $data['series'] = array_unique($seriesUnique);

        $data['data_produk'] = [];
        $i = 0;
        foreach($data['produks'] as $data_produk){
            $dataStok = $this->stokModel->where('id_produk', $data_produk['id'])->findAll();
            $stokS = 0;
            foreach($dataStok as $stok){
                if($stok['stok'] != 0){
                    $stokS += $stok['stok'];
                }
            }
            if($stokS != 0){
                $data['data_produk'][$i++] = [
                    'data_produk' => $data_produk,
                    'data_stok' => $dataStok
                ];
            }
        }
    //    dd($data['data_produk']);

        return view('produk', $data);
    }