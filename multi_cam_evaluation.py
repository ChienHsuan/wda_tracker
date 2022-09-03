import argparse

from evaluation.multicam_evaluation import splitted_multi_cam_evaluation


def arguement_inputs():
    parser = argparse.ArgumentParser(description='Multi cam evaluation')
    parser.add_argument('--test_data_dir', type=str, required=True, help='MTA test data directory')
    parser.add_argument('--tracking_results_dir', type=str, required=True, help='tracking results directory')
    parser.add_argument('--working_dir', type=str, required=True, help='working directory')
    parser.add_argument('--cam_ids', type=int, nargs='+', required=True, help='camera ids for evaluation')
    parser.add_argument('--eval_results_dir', type=str, required=True, help='evaluation results directory')
    return parser.parse_args()

def main():
    args = arguement_inputs()
    splitted_multi_cam_evaluation(dataset_folder=args.test_data_dir,
                                  track_results_folder=args.tracking_results_dir,
                                  working_dir=args.working_dir,
                                  cam_ids=args.cam_ids,
                                  results_output_folder=args.eval_results_dir,
                                  n_parts=1
                                  )

if __name__ == "__main__":
    main()
