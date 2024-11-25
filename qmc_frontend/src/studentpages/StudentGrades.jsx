import React, { useEffect, useState } from "react";
import SearchIcon from "@mui/icons-material/Search";
import axiosClientStudent from "../axoisclient/axios-client-student";
import { useQuery } from "react-query";
import Spinner from "react-bootstrap/Spinner";
import parentGradeCSS from "../parentpages/ParentGrades.module.css";

export default function StudentGrades() {
    const {
        data: grades = [],
        isLoading,
        error,
    } = useQuery(["studentGrade"], async () => {
        const response = await axiosClientStudent.get("/student/grade");
        console.log(response.data);
        return response.data;
    });
    if (isLoading) {
        return (
            <div className="d-flex justify-content-center mt-5">
                {" "}
                <Spinner animation="border" variant="primary" />
            </div>
        ); // You can replace this with a spinner or loading component
    }

    if (error) {
        return <div>Error fetching payment history: {error.message}</div>;
    }
    return (
        <>
            <div>
                <div className={parentGradeCSS.parentGradeContainer}>
                    {Object.keys(grades).length === 0 ? (
                        <div
                            style={{
                                display: "flex",
                                justifyContent: "center",
                                alignItems: "center",
                                flexDirection: "column",
                                border: "1px solid #ddd",
                                borderRadius: "10px",
                                width: "300px",
                                margin: "auto",
                                height: "200px",
                                backgroundColor: "#f9f9f9",
                                color: "#555",
                                textAlign: "center",
                                padding: "20px",
                                boxShadow: "0 4px 8px rgba(0, 0, 0, 0.1)",
                            }}
                        >
                            <h5 style={{ marginBottom: "10px" }}>
                                No Grades yet
                            </h5>
                            <p style={{ fontSize: "14px", color: "#888" }}>
                                Please check back later for available Grades.
                            </p>
                        </div>
                    ) : (
                        <table className={parentGradeCSS.parentTable}>
                            <thead>
                                <tr>
                                    <th>Subject</th>
                                    <th>Q1</th>
                                    <th>Q2</th>
                                    <th>Q3</th>
                                    <th>Q4</th>
                                    <th>Final Grade</th>
                                </tr>
                            </thead>
                            <tbody>
                                {Object.entries(grades).map(
                                    ([academicYear, subjects]) => (
                                        <React.Fragment key={academicYear}>
                                            <tr>
                                                <td
                                                    colSpan="6"
                                                    style={{
                                                        textAlign: "center",
                                                        fontWeight: "bold",
                                                    }}
                                                >
                                                    {`Academic Year ${academicYear}`}
                                                </td>
                                            </tr>
                                            {subjects.map((subject, index) => (
                                                <tr key={index}>
                                                    <td data-label="Subject">
                                                        {subject.subject}
                                                    </td>
                                                    <td data-label="Q1">
                                                        {subject.first_quarter}
                                                    </td>
                                                    <td data-label="Q2">
                                                        {subject.second_quarter}
                                                    </td>
                                                    <td data-label="Q3">
                                                        {subject.third_quarter}
                                                    </td>
                                                    <td data-label="Q4">
                                                        {subject.fourth_quarter}
                                                    </td>
                                                    <td data-label="Final Grade">
                                                        {/* Assuming final grade is calculated as an average */}
                                                        {(
                                                            (subject.first_quarter +
                                                                subject.second_quarter +
                                                                subject.third_quarter +
                                                                subject.fourth_quarter) /
                                                            4
                                                        ).toFixed(2)}
                                                    </td>
                                                </tr>
                                            ))}
                                        </React.Fragment>
                                    )
                                )}
                            </tbody>
                        </table>
                    )}
                </div>
            </div>
        </>
    );
}
